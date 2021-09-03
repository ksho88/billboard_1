class BillboardController < ApplicationController
 class SubsController < ApplicationController
  def index
    @subs = Sub.all
    render component: 'Subs', props: {subs: @subs}
  end
  def show
    @sub = Sub.find(params[:id])
    render component: 'Sub', props: { sub: @sub }
  end
  def new
    @sub = Sub.new
    render component: 'Sub', props: {sub: @sub }
  end
  def create
    @sub = sub.new (sub_params)
    if @sub.save
      redirect_to subs_path
    else
      render component: 'SubNew', props: { sub: @sub }
    end
  end
  def edit
    @sub = Sub.find(params{:id})
    render component: 'SubEdit', props: {sub: @sub}
  end
  def update
    sub = sub.find(params[:id])
    if @sub.update(sub_params)
      redirect_to subs_path
    else
      render component: 'SubEdit', props:
      {sub: @sub}
    end
  end
  def destroy
    sub.find(params[:id]).destroy
    @sub.destroy
    redirect_to subs_path
private
    { sub: {name: 'food'}}
    { sub: {name: 'food'}}
  def sub_params
    params.require(:subs).permit(:name)
  end